.class public Lcom/sec/android/Kies/kies_start$kiesBinder;
.super Landroid/os/Binder;
.source "kies_start.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/Kies/kies_start;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "kiesBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/Kies/kies_start;


# direct methods
.method public constructor <init>(Lcom/sec/android/Kies/kies_start;)V
    .registers 2
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/sec/android/Kies/kies_start$kiesBinder;->this$0:Lcom/sec/android/Kies/kies_start;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
