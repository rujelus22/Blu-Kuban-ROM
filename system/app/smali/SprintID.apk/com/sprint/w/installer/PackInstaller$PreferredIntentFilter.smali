.class Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;
.super Ljava/lang/Object;
.source "PackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferredIntentFilter"
.end annotation


# instance fields
.field filter:Landroid/content/IntentFilter;

.field sampleIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
