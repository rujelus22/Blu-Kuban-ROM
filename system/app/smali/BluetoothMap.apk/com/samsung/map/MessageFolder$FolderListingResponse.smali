.class public Lcom/samsung/map/MessageFolder$FolderListingResponse;
.super Ljava/lang/Object;
.source "MessageFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/map/MessageFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderListingResponse"
.end annotation


# instance fields
.field public FolderListingSize:I

.field public listing:Ljava/lang/String;

.field public status:I

.field final synthetic this$0:Lcom/samsung/map/MessageFolder;


# direct methods
.method public constructor <init>(Lcom/samsung/map/MessageFolder;)V
    .registers 3
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->this$0:Lcom/samsung/map/MessageFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/16 v0, 0xd1

    iput v0, p0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->status:I

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->FolderListingSize:I

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/map/MessageFolder$FolderListingResponse;->listing:Ljava/lang/String;

    .line 276
    return-void
.end method
