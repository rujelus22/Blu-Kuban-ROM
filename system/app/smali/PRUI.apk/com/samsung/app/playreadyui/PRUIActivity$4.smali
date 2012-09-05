.class Lcom/samsung/app/playreadyui/PRUIActivity$4;
.super Ljava/lang/Object;
.source "PRUIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/app/playreadyui/PRUIActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/playreadyui/PRUIActivity;


# direct methods
.method constructor <init>(Lcom/samsung/app/playreadyui/PRUIActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$4;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialogue"
    .parameter "arg1"

    .prologue
    .line 280
    const-string v0, "PRUIActivity"

    const-string v1, "Error Popup - ok click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity$4;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    invoke-virtual {v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->finish()V

    .line 283
    return-void
.end method
