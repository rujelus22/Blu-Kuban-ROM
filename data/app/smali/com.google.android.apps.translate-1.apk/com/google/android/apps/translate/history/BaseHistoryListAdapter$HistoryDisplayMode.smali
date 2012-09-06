.class public final enum Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;
.super Ljava/lang/Enum;
.source "BaseHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HistoryDisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

.field public static final enum FAVORITE:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

.field public static final enum HISTORY:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    const-string v1, "HISTORY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->HISTORY:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    new-instance v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    const-string v1, "FAVORITE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->FAVORITE:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    sget-object v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->HISTORY:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->FAVORITE:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->$VALUES:[Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->$VALUES:[Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    return-object v0
.end method
