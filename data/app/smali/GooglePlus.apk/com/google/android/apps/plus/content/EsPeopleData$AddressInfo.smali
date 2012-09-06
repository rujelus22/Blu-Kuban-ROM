.class public Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "EsPeopleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsPeopleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressInfo"
.end annotation


# instance fields
.field public customTag:Ljava/lang/String;

.field public standardTag:Ljava/lang/Integer;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
