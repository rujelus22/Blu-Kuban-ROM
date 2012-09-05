.class Lcom/sprint/w/installer/RssPackBrowser$FeedItem;
.super Ljava/lang/Object;
.source "RssPackBrowser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssPackBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeedItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field date:Ljava/lang/String;

.field description:Ljava/lang/String;

.field iconUrl:Ljava/lang/String;

.field id:Ljava/lang/String;

.field link:Ljava/lang/String;

.field password:Ljava/lang/String;

.field terms:Ljava/lang/String;

.field title:Ljava/lang/String;

.field userId:Ljava/lang/String;

.field version:Ljava/lang/String;

.field versionCode:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
