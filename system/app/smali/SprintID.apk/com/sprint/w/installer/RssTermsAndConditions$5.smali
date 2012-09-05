.class Lcom/sprint/w/installer/RssTermsAndConditions$5;
.super Ljava/lang/Object;
.source "RssTermsAndConditions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/RssTermsAndConditions;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssTermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sprint/w/installer/RssTermsAndConditions$5;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$5;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/RssTermsAndConditions;->setResult(I)V

    .line 158
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$5;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-virtual {v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->finish()V

    .line 159
    return-void
.end method
