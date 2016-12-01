class Jewel
{
  float centerX, centerY;
  float radius, angle;
  color fillColor, mColor;
  float increase;
  float rate;
  
  Jewel(float x, float y, float d, float a, color fc, color mc)
  {
    centerX = x;
    centerY = y;
    radius = d;
    angle = a;
    fillColor = fc;
    mColor = mc;
    increase = radius * 0.001;
    rate = 0.5528;
    // rate = 0;
  }
  
  void drawMe()
  {
    compute();
    write();
  }
  
  void compute()
  {
    angle += 1;
    // radius -= increase;
    
    // rate = noise(_rateNoise);
  }
  
  void write()
  {
    pushMatrix();
    translate(centerX, centerY);
    rotate(radians(angle));
    
    noStroke();
    fill(fillColor);
    
    beginShape();
    vertex(0, 0);
    bezierVertex((-radius / 2) * rate, 0, -radius / 2, (radius / 2) * rate, -radius / 2, radius / 2);
    bezierVertex( -radius / 2, (radius / 2) * (1 + rate), (-radius / 2) * rate, radius, 0, radius);
    bezierVertex(radius * rate, radius, radius, radius * rate, radius, 0);
    bezierVertex(radius, -radius * rate, radius * rate, -radius, 0, -radius);
    bezierVertex((radius / 2) * rate, -radius, radius / 2, (-radius / 2) - (radius / 2) * rate, radius / 2, -radius / 2); 
    bezierVertex(radius / 2, -radius / 2 * rate, radius / 2 * rate, 0, 0, 0);
    endShape();
    
    translate(0, radius / 2);
    fill(mColor);
    noStroke();
    
    float m_radius = radius / 10;
    
    beginShape();
    vertex(0, m_radius);
    bezierVertex(m_radius * rate, m_radius, m_radius, m_radius * rate, m_radius, 0);
    bezierVertex(m_radius, -m_radius * rate, m_radius * rate, -m_radius, 0, -m_radius);   
    bezierVertex(-m_radius * rate, -m_radius, -m_radius, -m_radius * rate, -m_radius, 0);
    bezierVertex(-m_radius,  m_radius * rate, -m_radius * rate, m_radius, 0, m_radius);
    endShape();
    
    popMatrix();
  }
}