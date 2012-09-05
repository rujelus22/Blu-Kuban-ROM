.class public interface abstract Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;
.super Ljava/lang/Object;
.source "FacebookAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/FacebookAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FacebookAPICallback"
.end annotation


# static fields
.field public static final TYPE_CANCELLED:I = 0x387

.field public static final TYPE_ERROR:I = 0x386

.field public static final TYPE_SUCCESS:I = 0x385


# virtual methods
.method public abstract onFacebookAPILogin(Lcom/vlingo/client/social/api/FacebookAPI;ILandroid/os/Bundle;)V
.end method

.method public abstract onFacebookAPIMethod(Lcom/vlingo/client/social/api/FacebookAPI;ILjava/lang/String;Landroid/os/Bundle;)V
.end method
