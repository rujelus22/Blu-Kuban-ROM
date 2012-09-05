.class Lcom/android/calendar/ChooserActivity$1;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ChooserActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/ChooserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/calendar/ChooserActivity$1;->this$0:Lcom/android/calendar/ChooserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity$1;->this$0:Lcom/android/calendar/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/calendar/ChooserActivity;->finish()V

    .line 319
    return-void
.end method
