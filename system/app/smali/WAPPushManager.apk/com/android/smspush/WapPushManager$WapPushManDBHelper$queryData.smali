.class public Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;
.super Ljava/lang/Object;
.source "WapPushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smspush/WapPushManager$WapPushManDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "queryData"
.end annotation


# instance fields
.field appType:I

.field public className:Ljava/lang/String;

.field furtherProcessing:I

.field installOrder:I

.field needSignature:I

.field public packageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;


# direct methods
.method protected constructor <init>(Lcom/android/smspush/WapPushManager$WapPushManDBHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->this$1:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
