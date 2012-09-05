.class Lcom/sprint/w/installer/TermsAndConditions$6;
.super Ljava/lang/Object;
.source "TermsAndConditions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/TermsAndConditions;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/TermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/TermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sprint/w/installer/TermsAndConditions$6;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "di"
    .parameter "which"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$6;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    #calls: Lcom/sprint/w/installer/TermsAndConditions;->loadContent()V
    invoke-static {v0}, Lcom/sprint/w/installer/TermsAndConditions;->access$100(Lcom/sprint/w/installer/TermsAndConditions;)V

    .line 242
    return-void
.end method
