.class public Lcom/swype/android/jni/SwypeCore$LanguageList;
.super Ljava/lang/Object;
.source "SwypeCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageList"
.end annotation


# instance fields
.field public isActive:[Z

.field public langDisplayNames:[Ljava/lang/String;

.field public langNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
