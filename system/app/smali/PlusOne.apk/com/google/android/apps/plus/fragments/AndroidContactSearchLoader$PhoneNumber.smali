.class Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;
.super Ljava/lang/Object;
.source "AndroidContactSearchLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneNumber"
.end annotation


# instance fields
.field lookupKey:Ljava/lang/String;

.field name:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field phoneType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader$PhoneNumber;-><init>()V

    return-void
.end method
