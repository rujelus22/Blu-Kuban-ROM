.class Lcom/sprint/w/installer/RssTermsAndConditions$6;
.super Ljava/lang/Object;
.source "RssTermsAndConditions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 148
    iput-object p1, p0, Lcom/sprint/w/installer/RssTermsAndConditions$6;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "di"
    .parameter "which"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$6;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/RssTermsAndConditions;->setResult(I)V

    .line 152
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$6;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-virtual {v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->finish()V

    .line 153
    return-void
.end method
