package flash.text.engine {
    import __ruffle__.stub_getter;
    import __ruffle__.stub_setter;
    import __ruffle__.stub_method;

    import flash.display.DisplayObject;
    import flash.display.DisplayObjectContainer;
    import flash.errors.IllegalOperationError;
    import flash.geom.Rectangle;
    import flash.ui.ContextMenu;

    // FIXME: None of the DisplayObjectContainer methods actually work on
    // the TextLine class in Ruffle, despite the methods working fine in FP-
    // however, it's unlikely that SWFs will actually attempt to add children
    // to a TextLine.
    [Ruffle(Abstract)]
    [API("662")]
    public final class TextLine extends DisplayObjectContainer {
        [Ruffle(NativeAccessible)]
        private var _specifiedWidth:Number = 0.0;

        [Ruffle(NativeAccessible)]
        internal var _textBlock:TextBlock = null;

        [Ruffle(NativeAccessible)]
        private var _rawTextLength:int = 0;

        internal var _validity:String = "valid";

        public static const MAX_LINE_WIDTH:int = 1000000;

        public var userData;

        public function get rawTextLength():int {
            return this._rawTextLength;
        }

        public function get textBlockBeginIndex():int {
            stub_getter("flash.text.engine.TextLine", "textBlockBeginIndex");
            return 0;
        }

        public function get specifiedWidth():Number {
            return this._specifiedWidth;
        }

        public function get textBlock():TextBlock {
            return this._textBlock;
        }

        public function get ascent():Number {
            stub_getter("flash.text.engine.TextLine", "ascent");
            return 12.0;
        }

        public function get descent():Number {
            stub_getter("flash.text.engine.TextLine", "descent");
            return 3.0;
        }

        public function get unjustifiedTextWidth():Number {
            stub_getter("flash.text.engine.TextLine", "unjustifiedTextWidth");
            return this._specifiedWidth;
        }

        public native function get textWidth():Number;
        public native function get textHeight():Number;

        public function get validity():String {
            stub_getter("flash.text.engine.TextLine", "validity");
            return this._validity;
        }

        public function set validity(value:String):void {
            stub_setter("flash.text.engine.TextLine", "validity");
            this._validity = value;
        }

        public function get hasGraphicElement():Boolean {
            stub_getter("flash.text.engine.TextLine", "hasGraphicElement");
            return false;
        }

        public function get atomCount():int {
            stub_getter("flash.text.engine.TextLine", "atomCount");
            return this._rawTextLength;
        }

        public function get nextLine():TextLine {
            return null;
        }

        public function get previousLine():TextLine {
            return null;
        }

        public function getBaselinePosition(baseline:String):Number {
            stub_method("flash.text.engine.TextLine", "getBaselinePosition");
            return 0.0;
        }

        public function get hasTabs():Boolean {
            stub_getter("flash.text.engine.TextLine", "hasTabs");
            return false;
        }

        public function getAtomIndexAtPoint(stageX:Number, stageY:Number):int {
            stub_method("flash.text.engine.TextLine", "getAtomIndexAtPoint");
            return -1;
        }

        public function getAtomIndexAtCharIndex(charIndex:int):int {
            stub_method("flash.text.engine.TextLine", "getAtomIndexAtCharIndex");
            return -1;
        }

        public function getAtomBidiLevel(index:int):int {
            stub_method("flash.text.engine.TextLine", "getAtomBidiLevel");
            return 0;
        }

        public function getAtomBounds(index:int):Rectangle {
            stub_method("flash.text.engine.TextLine", "getAtomBounds");
            return new Rectangle(0, 0, 0, 0);
        }

        public function getAtomCenter(index:int):Number {
            stub_method("flash.text.engine.TextLine", "getAtomCenter");
            return 1.0;
        }

        public function getAtomGraphic(index:int):DisplayObject {
            stub_method("flash.text.engine.TextLine", "getAtomGraphic");
            return null;
        }

        public function getAtomTextBlockBeginIndex(index:int):int {
            stub_method("flash.text.engine.TextLine", "getAtomTextBlockBeginIndex");
            return 0;
        }

        public function getAtomTextBlockEndIndex(index:int):int {
            stub_method("flash.text.engine.TextLine", "getAtomTextBlockEndIndex");
            return 0;
        }

        public function getAtomTextRotation(index:int):String {
            stub_method("flash.text.engine.TextLine", "getAtomTextRotation");
            return TextRotation.ROTATE_0;
        }

        public function getAtomWordBoundaryOnLeft(index:int):Boolean {
            stub_method("flash.text.engine.TextLine", "getAtomWordBoundaryOnLeft");
            return false;
        }

        // This function does nothing in Flash Player 32
        public function flushAtomData():void { }

        // Overrides

        override public function set contextMenu(cm:ContextMenu):void {
            throw new IllegalOperationError("Error #2181: The TextLine class does not implement this property or method.", 2181);
        }

        override public function set focusRect(value:Object):void {
            throw new IllegalOperationError("Error #2181: The TextLine class does not implement this property or method.", 2181);
        }

        override public function set tabChildren(value:Boolean):void {
            throw new IllegalOperationError("Error #2181: The TextLine class does not implement this property or method.", 2181);
        }

        override public function set tabEnabled(value:Boolean):void {
            throw new IllegalOperationError("Error #2181: The TextLine class does not implement this property or method.", 2181);
        }

        override public function set tabIndex(index:int):void {
            throw new IllegalOperationError("Error #2181: The TextLine class does not implement this property or method.", 2181);
        }

        // End of overrides
    }
}
