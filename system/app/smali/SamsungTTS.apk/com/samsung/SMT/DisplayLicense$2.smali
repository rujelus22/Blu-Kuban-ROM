.class Lcom/samsung/SMT/DisplayLicense$2;
.super Ljava/lang/Object;
.source "DisplayLicense.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/SMT/DisplayLicense;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/SMT/DisplayLicense;


# direct methods
.method constructor <init>(Lcom/samsung/SMT/DisplayLicense;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/SMT/DisplayLicense$2;->this$0:Lcom/samsung/SMT/DisplayLicense;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "oDialogInterface"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/SMT/DisplayLicense$2;->this$0:Lcom/samsung/SMT/DisplayLicense;

    invoke-virtual {v0}, Lcom/samsung/SMT/DisplayLicense;->finish()V

    .line 204
    return-void
.end method
