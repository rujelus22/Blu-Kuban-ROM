.class Lcom/samsung/prlupdate/PRLUpdate$CustomDialog;
.super Landroid/app/ProgressDialog;
.source "PRLUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/prlupdate/PRLUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/prlupdate/PRLUpdate;


# direct methods
.method public constructor <init>(Lcom/samsung/prlupdate/PRLUpdate;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 870
    iput-object p1, p0, Lcom/samsung/prlupdate/PRLUpdate$CustomDialog;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    .line 871
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 872
    return-void
.end method
