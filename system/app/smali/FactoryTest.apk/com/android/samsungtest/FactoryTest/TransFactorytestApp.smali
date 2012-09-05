.class public Lcom/android/samsungtest/FactoryTest/TransFactorytestApp;
.super Lcom/android/samsungtest/FactoryTest/FactoryTestApp;
.source "TransFactorytestApp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "icicle"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/TransFactorytestApp;->finish()V

    .line 35
    return-void
.end method
