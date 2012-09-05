.class Lcom/android/sprintmenu/DUN$2;
.super Ljava/lang/Object;
.source "DUN.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/DUN;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/DUN;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/DUN;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/sprintmenu/DUN$2;->this$0:Lcom/android/sprintmenu/DUN;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/sprintmenu/DUN$2;->this$0:Lcom/android/sprintmenu/DUN;

    iget-object v1, p0, Lcom/android/sprintmenu/DUN$2;->this$0:Lcom/android/sprintmenu/DUN;

    invoke-virtual {v1}, Lcom/android/sprintmenu/DUN;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.sprintmenu.dialup.setting"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/android/sprintmenu/DUN;->setChecked(I)V
    invoke-static {v0, v1}, Lcom/android/sprintmenu/DUN;->access$200(Lcom/android/sprintmenu/DUN;I)V

    .line 131
    return-void
.end method
