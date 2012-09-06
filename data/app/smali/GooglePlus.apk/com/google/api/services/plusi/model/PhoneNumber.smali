.class public final Lcom/google/api/services/plusi/model/PhoneNumber;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PhoneNumber.java"


# instance fields
.field public countryCode:Ljava/lang/Integer;

.field public countryCodeSource:Ljava/lang/String;

.field public extension:Ljava/lang/String;

.field public italianLeadingZero:Ljava/lang/Boolean;

.field public nationalNumber:Ljava/math/BigInteger;

.field public preferredDomesticCarrierCode:Ljava/lang/String;

.field public rawInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
