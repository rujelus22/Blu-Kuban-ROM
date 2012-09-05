.class public final enum Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
.super Ljava/lang/Enum;
.source "PageTurnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchZone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

.field public static final enum CENTER:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

.field public static final enum LEFT_EDGE:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

.field public static final enum RIGHT_EDGE:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2152
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    const-string v1, "LEFT_EDGE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->LEFT_EDGE:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    .line 2153
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    const-string v1, "RIGHT_EDGE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->RIGHT_EDGE:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    .line 2154
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->CENTER:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    .line 2151
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    sget-object v1, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->LEFT_EDGE:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->RIGHT_EDGE:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->CENTER:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->$VALUES:[Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

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
    .line 2151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    .registers 2
    .parameter

    .prologue
    .line 2151
    const-class v0, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    .registers 1

    .prologue
    .line 2151
    sget-object v0, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->$VALUES:[Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    return-object v0
.end method
