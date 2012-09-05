.class final enum Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;
.super Ljava/lang/Enum;
.source "NotificationSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

.field public static final enum CATEGORY:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

.field public static final enum SETTING:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    const-string v1, "CATEGORY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->CATEGORY:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    new-instance v0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    const-string v1, "SETTING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->SETTING:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    sget-object v1, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->CATEGORY:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->SETTING:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->$VALUES:[Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;
    .registers 2
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->$VALUES:[Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    return-object v0
.end method
