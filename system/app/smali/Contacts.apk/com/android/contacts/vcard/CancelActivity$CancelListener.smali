.class Lcom/android/contacts/vcard/CancelActivity$CancelListener;
.super Ljava/lang/Object;
.source "CancelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/CancelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/CancelActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/CancelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/contacts/vcard/CancelActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/CancelActivity;Lcom/android/contacts/vcard/CancelActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/CancelActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/CancelActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 70
    if-eqz p1, :cond_5

    .line 71
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/vcard/CancelActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/CancelActivity;->finish()V

    .line 74
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 63
    if-eqz p1, :cond_5

    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 66
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/vcard/CancelActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/CancelActivity;->finish()V

    .line 67
    return-void
.end method
