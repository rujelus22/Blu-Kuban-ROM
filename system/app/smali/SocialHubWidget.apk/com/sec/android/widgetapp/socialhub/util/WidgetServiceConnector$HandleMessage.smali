.class public Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;
.super Ljava/lang/Object;
.source "WidgetServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandleMessage"
.end annotation


# instance fields
.field public reqID:I

.field public reqType:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;II)V
    .registers 4
    .parameter
    .parameter "id"
    .parameter "type"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;->this$0:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput p2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;->reqID:I

    .line 557
    iput p3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;->reqType:I

    .line 558
    return-void
.end method
