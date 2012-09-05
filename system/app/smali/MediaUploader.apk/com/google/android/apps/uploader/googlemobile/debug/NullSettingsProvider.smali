.class public Lcom/google/android/apps/uploader/googlemobile/debug/NullSettingsProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/debug/SettingsProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeBoolean(Ljava/lang/String;Z)Z
    .registers 3

    return p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .registers 3

    return p2
.end method

.method public getAttributeLong(Ljava/lang/String;J)J
    .registers 4

    return-wide p2
.end method

.method public getAttributeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method

.method public hasCapability(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
