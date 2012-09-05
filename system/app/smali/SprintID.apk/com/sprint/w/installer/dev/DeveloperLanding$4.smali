.class Lcom/sprint/w/installer/dev/DeveloperLanding$4;
.super Ljava/lang/Object;
.source "DeveloperLanding.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/dev/DeveloperLanding;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/dev/DeveloperLanding;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$4;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/dev/DeveloperLanding;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$4;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    iget-object v2, v2, Lcom/sprint/w/installer/dev/DeveloperLanding;->mPacksOnSd:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, fn:Ljava/lang/String;
    iget-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding$4;->this$0:Lcom/sprint/w/installer/dev/DeveloperLanding;

    #calls: Lcom/sprint/w/installer/dev/DeveloperLanding;->installPack(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sprint/w/installer/dev/DeveloperLanding;->access$200(Lcom/sprint/w/installer/dev/DeveloperLanding;Ljava/lang/String;)V

    .line 164
    return-void
.end method
