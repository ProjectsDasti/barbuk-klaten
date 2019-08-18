<div id="rev-slider">
  <div id="rev_slider_46_1_wrapper" class="rev_slider_wrapper fullscreen-container" data-alias="notgeneric1" style="background-color:transparent;padding:0px;"><div id="rev_slider_46_1" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.0.7">
      <ul>
        @foreach($sliders as $slider)
        <li data-index="rs-{{$slider->id}}" data-transition="zoomout" data-slotamount="default" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"> 
          <img src="{{ URL::asset('upload/slider/'.$slider->slider_image.'-b.jpg') }}" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg"> 
          <div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-148-layer-1" data-x="['right','right','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-40','-40','-40','-40']" data-fontsize="[70','50','50','20]"data-lineheight="[70','50','50','20]"data-width="none"data-height="none"data-whitespace="nowrap"data-transform_idle="o:1;"data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000" data-splitin="chars" data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05" style="z-index: 5; white-space: nowrap; color:#fff;letter-spacing:14px">{{$slider->slider_title}}</div>
          <div class="tp-caption NotGeneric-SubTitle tp-resizeme rs-parallaxlevel-0" id="slide-149-layer-2" data-x="['right','right','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['15','15','15','15']" data-fontsize="['16','16','16','14']"data-width="none"data-height="none"data-whitespace="nowrap"data-transform_idle="o:1;"data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1500" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="z-index: 6; white-space: nowrap;font-weight: normal;">{{$slider->slider_sub_title}}</div>          
          <div class="tp-caption rev-scroll-btn rs-parallaxlevel-0" id="slide-150-layer-4" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['50','50','50','50']" data-width="0" data-height="150" data-whitespace="nowrap"data-transform_idle="o:1;"data-style_hover="cursor:pointer;"data-transform_in="y:50px;opacity:0;s:1500;e:Power3.easeInOut;" data-transform_out="y:50px;opacity:0;s:1000;s:1000;" data-start="2000" data-splitin="none" data-splitout="none" data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]'data-basealign="slide" data-responsive_offset="off" data-responsive="off"style="z-index:9;"> <span><img alt="" src="{{ URL::asset('site_assets/img/mouse.png') }}"> </span> </div>
        </li>
        @endforeach

         
      </ul>   
    <div class="tp-static-layers"></div>
      <div class="tp-bannertimer" style="height:3px;background-color:rgba(255, 255, 255, 0.40);"></div> 
    </div>
  </div>
</div>