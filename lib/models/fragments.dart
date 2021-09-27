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
    frag.nameFilter1 = 'Banho & Tosa';
    frag.nameFilter2 = 'Consultas';
    frag.nameFilter3 = 'Medicamentos';
    frag.nameFilter4 = 'Fantasias';
    frag.nameFilter5 = 'Outros';

    frag.iconFilter1 = 'lib/assets/images/icons_filters/icon_servicos.png';
    frag.iconFilter2 = 'lib/assets/images/icons_filters/icon_consultas.png';
    frag.iconFilter3 = 'lib/assets/images/icons_filters/icon_medicamento.png';
    frag.iconFilter4 = 'lib/assets/images/icons_filters/icon_fantasias.png';
    frag.iconFilter5 = 'lib/assets/images/icons_filters/icon_more.png';

    return frag;
  }

  Lojas(){
    Fragments frag = Fragments();
    frag.nameFilter1 = 'Ração';
    frag.nameFilter2 = 'Acessórios';
    frag.nameFilter3 = 'Snacks';
    frag.nameFilter4 = 'Brinquedos';
    frag.nameFilter5 = 'Outros';

    frag.iconFilter1 = 'lib/assets/images/icons_filters/icon_racao.png';
    frag.iconFilter2 = 'lib/assets/images/icons_filters/icon_snacks.png';
    frag.iconFilter3 = 'lib/assets/images/icons_filters/icon_acessorios.png';
    frag.iconFilter4 = 'lib/assets/images/icons_filters/icon_brinquedos.png';
    frag.iconFilter5 = 'lib/assets/images/icons_filters/icon_more.png';

    return frag;
  }
}