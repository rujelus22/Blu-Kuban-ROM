.class Lcom/swype/android/inputmethod/SwypeApplication$1;
.super Landroid/database/ContentObserver;
.source "SwypeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/inputmethod/SwypeApplication;->registerHapticSettingsObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/inputmethod/SwypeApplication;


# direct methods
.method constructor <init>(Lcom/swype/android/inputmethod/SwypeApplication;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeApplication$1;->this$0:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication$1;->this$0:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->updateHapticSetting()Z

    .line 131
    return-void
.end method
