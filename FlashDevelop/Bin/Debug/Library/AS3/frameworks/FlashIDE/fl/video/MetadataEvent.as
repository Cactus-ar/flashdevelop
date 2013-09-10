﻿package fl.video
{
	import flash.events.Event;

	/**
	 * Flash<sup>&#xAE;</sup> Player dispatches a MetadataEvent object when the user 
	 */
	public class MetadataEvent extends Event implements IVPEvent
	{
		/**
		 * Defines the value of the 
		 */
		public static const METADATA_RECEIVED : String = "metadataReceived";
		/**
		 * Defines the value of the 
		 */
		public static const CUE_POINT : String = "cuePoint";
		private var _info : Object;
		private var _vp : uint;

		/**
		 * An object with dynamic properties added depending on the event type.
		 */
		public function get info () : Object;
		public function set info (i:Object) : void;
		/**
		 * The index of the VideoPlayer object involved in this event.
		 */
		public function get vp () : uint;
		public function set vp (n:uint) : void;

		/**
		 * Creates an Event object that contains information about metadata events. 
		 */
		public function MetadataEvent (type:String, bubbles:Boolean = false, cancelable:Boolean = false, info:Object = null, vp:uint = 0);
		/**
		 *  @private
		 */
		public function clone () : Event;
	}
}