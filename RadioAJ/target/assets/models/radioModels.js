define([],function(){var Radio=function(player){this.player=ko.observable(player),this.offset=ko.observable(0),this.songsPlayed=ko.observable(),this.nowPlaying=ko.observable(),this.songsQueued=ko.observable();var self=this;self.playNext=function(){this.nowPlaying()&&this.songsPlayed().push(this.nowPlaying),this.songsQueued().length>0&&this.nowPlaying(this.songsQueued().splice(0,1)),self.player().loadVideoById(self.nowPlaying().videoId,0)}},Song=function(videoId,dataObject){this.videoId=videoId,this.metadata=dataObject};return{Radio:Radio,Song:Song}});