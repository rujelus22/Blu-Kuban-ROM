.class public interface abstract Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
.super Ljava/lang/Object;
.source "FoursquareAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/FoursquareAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FoursquareCallback"
.end annotation


# virtual methods
.method public abstract onCheckinResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract onFriendList(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract onLoginResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract onVenueList(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation
.end method
