.class public interface abstract Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
.super Ljava/lang/Object;
.source "SocialHubBaseListAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISnsExtendListAdapter"
.end annotation


# virtual methods
.method public abstract getCursor()Landroid/database/Cursor;
.end method

.method public abstract getItemClickListenr()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method public abstract getListAdapter()Landroid/widget/SimpleCursorAdapter;
.end method

.method public abstract getTitleResource()I
.end method

.method public abstract isUseTitleCount()Z
.end method

.method public abstract onApiCalled(ILcom/sec/android/socialhub/parent/IActivityUIHandler;)V
.end method

.method public abstract onHandledResponse(Lcom/sec/android/socialhub/parent/IActivityUIHandler;IIILandroid/net/Uri;ZZ)V
.end method

.method public abstract requestApi(Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/os/Bundle;Z)I
.end method

.method public abstract setFeedProfile(Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)V
.end method
