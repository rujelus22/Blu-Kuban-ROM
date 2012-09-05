.class public Lcom/samsung/map/MessageFolder$PushMessageResponse;
.super Ljava/lang/Object;
.source "MessageFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/map/MessageFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PushMessageResponse"
.end annotation


# instance fields
.field public handle:I

.field public status:I

.field final synthetic this$0:Lcom/samsung/map/MessageFolder;


# direct methods
.method public constructor <init>(Lcom/samsung/map/MessageFolder;)V
    .registers 3
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/samsung/map/MessageFolder$PushMessageResponse;->this$0:Lcom/samsung/map/MessageFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/16 v0, 0xd1

    iput v0, p0, Lcom/samsung/map/MessageFolder$PushMessageResponse;->status:I

    .line 366
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/map/MessageFolder$PushMessageResponse;->handle:I

    .line 367
    return-void
.end method

.method public constructor <init>(Lcom/samsung/map/MessageFolder;I)V
    .registers 4
    .parameter
    .parameter "respCode"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/samsung/map/MessageFolder$PushMessageResponse;->this$0:Lcom/samsung/map/MessageFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput p2, p0, Lcom/samsung/map/MessageFolder$PushMessageResponse;->status:I

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/map/MessageFolder$PushMessageResponse;->handle:I

    .line 372
    return-void
.end method
