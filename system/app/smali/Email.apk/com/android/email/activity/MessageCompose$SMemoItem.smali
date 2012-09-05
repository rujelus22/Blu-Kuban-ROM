.class Lcom/android/email/activity/MessageCompose$SMemoItem;
.super Ljava/lang/Object;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMemoItem"
.end annotation


# instance fields
.field private final mSmemo:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "agenda"

    .prologue
    .line 14458
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SMemoItem;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14459
    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$SMemoItem;->mSmemo:Ljava/lang/String;

    .line 14460
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14463
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMemoItem;->mSmemo:Ljava/lang/String;

    return-object v0
.end method
