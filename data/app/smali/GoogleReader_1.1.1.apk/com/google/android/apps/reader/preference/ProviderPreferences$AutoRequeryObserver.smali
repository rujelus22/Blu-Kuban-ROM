.class Lcom/google/android/apps/reader/preference/ProviderPreferences$AutoRequeryObserver;
.super Landroid/database/ContentObserver;
.source "ProviderPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/preference/ProviderPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRequeryObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/preference/ProviderPreferences;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$AutoRequeryObserver;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    .line 363
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 364
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/apps/reader/preference/ProviderPreferences$AutoRequeryObserver;->this$0:Lcom/google/android/apps/reader/preference/ProviderPreferences;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/preference/ProviderPreferences;->onContentChanged()V

    .line 369
    return-void
.end method
