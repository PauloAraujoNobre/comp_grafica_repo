% qst3MatrizRotacao: dado os pontos de um objeto e o �ngulo de rota��o, plota a 
% figura original e a rota��o desse objeto no sentido hor�rio
function retval = qst3MatrizRotacao(pontos, angulo)
  
  % rotacao2: dado os pontos de um objeto e o �ngulo de rota��o, retorma a 
  % rota��o desses pontos no sentido hor�rio
  function pontosTransformados = rotacao2(pontos, angulo)
    M = [cos(angulo) sin(angulo); -sin(angulo) cos(angulo)]
    pontosTransformados = M * pontos
  endfunction
  
  pontos(length(pontos) + 1, :) = [pontos(1, 1) pontos(1, 2)]
  pontosTransformados = (rotacao2(pontos', angulo))'
  plot(
    pontos(:, 1), pontos(:, 2), '-r',
    pontosTransformados(:, 1), pontosTransformados(:, 2), '-b'
  )
  legend("original", "rota��o sentido hor�rio")
endfunction
