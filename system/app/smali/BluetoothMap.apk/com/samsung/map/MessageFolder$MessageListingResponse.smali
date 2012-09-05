.class public Lcom/samsung/map/MessageFolder$MessageListingResponse;
.super Ljava/lang/Object;
.source "MessageFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/map/MessageFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageListingResponse"
.end annotation


# instance fields
.field public MSETime:Ljava/lang/String;

.field public MessageListingSize:I

.field public NewMessage:Z

.field public listing:Ljava/lang/String;

.field public status:I

.field final synthetic this$0:Lcom/samsung/map/MessageFolder;


# direct methods
.method public constructor <init>(Lcom/samsung/map/MessageFolder;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 295
    iput-object p1, p0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->this$0:Lcom/samsung/map/MessageFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/16 v0, 0xd1

    iput v0, p0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->status:I

    .line 297
    iput-object v2, p0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->MSETime:Ljava/lang/String;

    .line 298
    iput-object v2, p0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->listing:Ljava/lang/String;

    .line 299
    iput-boolean v1, p0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->NewMessage:Z

    .line 300
    iput v1, p0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->MessageListingSize:I

    .line 301
    return-void
.end method
