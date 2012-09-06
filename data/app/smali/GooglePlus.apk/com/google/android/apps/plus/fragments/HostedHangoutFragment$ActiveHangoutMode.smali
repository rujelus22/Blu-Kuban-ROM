.class final enum Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;
.super Ljava/lang/Enum;
.source "HostedHangoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActiveHangoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

.field public static final enum MODE_DISABLE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

.field public static final enum MODE_HIDE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

.field public static final enum MODE_NONE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    const-string v1, "MODE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->MODE_NONE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    .line 80
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    const-string v1, "MODE_DISABLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->MODE_DISABLE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    .line 81
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    const-string v1, "MODE_HIDE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->MODE_HIDE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->MODE_NONE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->MODE_DISABLE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->MODE_HIDE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->$VALUES:[Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 78
    const-class v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->$VALUES:[Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    return-object v0
.end method
