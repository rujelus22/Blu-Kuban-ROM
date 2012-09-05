.class public interface abstract Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
.super Ljava/lang/Object;
.source "ExtendFeedFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IExtendView"
.end annotation


# virtual methods
.method public abstract getCursor()Landroid/database/Cursor;
.end method

.method public abstract getCursor(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getIndexDate()I
.end method

.method public abstract getSearchField()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public abstract getWrapper(Landroid/content/Context;Landroid/widget/Adapter;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onOptionsItemSelected(Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)Z
.end method

.method public abstract requestActivityRetrieve(Z)I
.end method

.method public abstract setEnableRefreshMenu(Z)V
.end method
