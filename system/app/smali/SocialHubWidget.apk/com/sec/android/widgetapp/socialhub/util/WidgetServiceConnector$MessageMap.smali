.class public Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;
.super Ljava/lang/Object;
.source "WidgetServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageMap"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mExtra:Ljava/lang/Object;

.field public mReqType:I

.field public mSpType:I


# direct methods
.method public constructor <init>(IILandroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .parameter "type"
    .parameter "sp"
    .parameter "ctx"
    .parameter "obj"

    .prologue
    .line 569
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;->mReqType:I

    .line 571
    iput p2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;->mSpType:I

    .line 572
    iput-object p3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;->mContext:Landroid/content/Context;

    .line 573
    iput-object p4, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;->mExtra:Ljava/lang/Object;

    .line 574
    return-void
.end method
