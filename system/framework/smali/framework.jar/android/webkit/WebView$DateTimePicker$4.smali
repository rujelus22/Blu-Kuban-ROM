.class Landroid/webkit/WebView$DateTimePicker$4;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$DateTimePicker;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$DateTimePicker;)V
    .registers 2
    .parameter

    .prologue
    .line 6242
    iput-object p1, p0, Landroid/webkit/WebView$DateTimePicker$4;->this$1:Landroid/webkit/WebView$DateTimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6244
    const/4 v0, -0x2

    if-ne p2, v0, :cond_8

    .line 6245
    iget-object v0, p0, Landroid/webkit/WebView$DateTimePicker$4;->this$1:Landroid/webkit/WebView$DateTimePicker;

    #calls: Landroid/webkit/WebView$DateTimePicker;->clear()V
    invoke-static {v0}, Landroid/webkit/WebView$DateTimePicker;->access$2700(Landroid/webkit/WebView$DateTimePicker;)V

    .line 6247
    :cond_8
    return-void
.end method
