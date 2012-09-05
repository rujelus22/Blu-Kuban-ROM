.class final enum Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;
.super Ljava/lang/Enum;
.source "PhotosFromPhoneLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DateDisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

.field public static final enum Month:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

.field public static final enum MonthDate:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

.field public static final enum Year:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    const-string v1, "MonthDate"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->MonthDate:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    .line 95
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    const-string v1, "Month"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->Month:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    .line 96
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    const-string v1, "Year"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->Year:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    sget-object v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->MonthDate:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->Month:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->Year:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->$VALUES:[Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;
    .registers 2
    .parameter

    .prologue
    .line 93
    const-class v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->$VALUES:[Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    return-object v0
.end method
