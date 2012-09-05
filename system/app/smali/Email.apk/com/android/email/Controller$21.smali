.class Lcom/android/email/Controller$21;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->getUserProfile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$mType:I


# direct methods
.method constructor <init>(Lcom/android/email/Controller;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 6758
    iput-object p1, p0, Lcom/android/email/Controller$21;->this$0:Lcom/android/email/Controller;

    iput p2, p0, Lcom/android/email/Controller$21;->val$mType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 6760
    iget v0, p0, Lcom/android/email/Controller$21;->val$mType:I

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getUserProfile()V

    .line 6761
    return-void
.end method
