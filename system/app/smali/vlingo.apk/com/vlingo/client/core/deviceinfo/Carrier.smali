.class public Lcom/vlingo/client/core/deviceinfo/Carrier;
.super Ljava/lang/Object;
.source "Carrier.java"


# instance fields
.field public iso2letterCountry:Ljava/lang/String;

.field public iso3letterCountry:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "iso2letterCountry"
    .parameter "iso3letterCountry"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/vlingo/client/core/deviceinfo/Carrier;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/vlingo/client/core/deviceinfo/Carrier;->iso2letterCountry:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/vlingo/client/core/deviceinfo/Carrier;->iso3letterCountry:Ljava/lang/String;

    .line 18
    return-void
.end method
