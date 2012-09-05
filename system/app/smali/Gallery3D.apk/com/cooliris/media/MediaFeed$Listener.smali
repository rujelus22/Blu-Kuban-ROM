.class public interface abstract Lcom/cooliris/media/MediaFeed$Listener;
.super Ljava/lang/Object;
.source "MediaFeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/MediaFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFeedAboutToChange(Lcom/cooliris/media/MediaFeed;)V
.end method

.method public abstract onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V
.end method
