class Fragments{
  String nameFilter1 = '';
  String nameFilter2 = '';
  String nameFilter3 = '';
  String nameFilter4 = '';
  String nameFilter5 = '';

  String iconFilter1 = '';
  String iconFilter2 = '';
  String iconFilter3 = '';
  String iconFilter4 = '';
  String iconFilter5 = '';

  Clinicas(){
    Fragments frag = Fragments();
    frag.nameFilter1 = '';
    frag.nameFilter2 = '';
    frag.nameFilter3 = '';
    frag.nameFilter4 = '';
    frag.nameFilter5 = '';

    frag.iconFilter1 = '';
    frag.iconFilter2 = '';
    frag.iconFilter3 = '';
    frag.iconFilter4 = '';
    frag.iconFilter5 = '';

    return frag;
  }

  Lojas(){
    Fragments frag = Fragments();
    frag.nameFilter1 = 'Ração';
    frag.nameFilter2 = 'Acessórios';
    frag.nameFilter3 = 'Snacks';
    frag.nameFilter4 = 'Brinquedos';
    frag.nameFilter5 = 'Outros';

    frag.iconFilter1 = 'lib/assets/images/icons_filters/icon_servicos.png';
    frag.iconFilter2 = 'lib/assets/images/icons_filters/icon_acessorios.png';
    frag.iconFilter3 = 'lib/assets/images/icons_filters/icon_medicamento.png';
    frag.iconFilter4 = 'lib/assets/images/icons_filters/icon_consultas.png';
    frag.iconFilter5 = 'lib/assets/images/icons_filters/icon_more.png';

    return frag;
  }
}