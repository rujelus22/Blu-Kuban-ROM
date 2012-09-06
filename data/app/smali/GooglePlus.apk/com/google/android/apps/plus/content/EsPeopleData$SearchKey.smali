.class Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;
.super Ljava/lang/Object;
.source "EsPeopleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsPeopleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchKey"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final keyType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "keyType"
    .parameter "key"

    .prologue
    .line 2767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2768
    iput p1, p0, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;->keyType:I

    .line 2769
    iput-object p2, p0, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;->key:Ljava/lang/String;

    .line 2770
    return-void
.end method
