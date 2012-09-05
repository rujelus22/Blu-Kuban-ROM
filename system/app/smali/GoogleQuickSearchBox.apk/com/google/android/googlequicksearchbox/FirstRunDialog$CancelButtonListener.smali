.class Lcom/google/android/googlequicksearchbox/FirstRunDialog$CancelButtonListener;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/FirstRunDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog$CancelButtonListener;->this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/FirstRunDialog;Lcom/google/android/googlequicksearchbox/FirstRunDialog$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/FirstRunDialog$CancelButtonListener;-><init>(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog$CancelButtonListener;->this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->cancel()V

    .line 123
    return-void
.end method
