.class public final Lcom/google/api/services/plusi/model/StructuredAddressProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "StructuredAddressProto.java"


# instance fields
.field public address:Lcom/google/api/services/plusi/model/AddressProto;

.field public postalAddress:Lcom/google/api/services/plusi/model/PostalAddress;

.field public precision:Ljava/lang/String;

.field public streetAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
