.class public final Lcom/google/api/services/plusi/model/ChipData;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ChipData.java"


# instance fields
.field public active:Ljava/lang/Boolean;

.field public displayNumber:Ljava/lang/Integer;

.field public displayText:Ljava/lang/String;

.field public iconCss:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public subChip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ChipData;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const-class v0, Lcom/google/api/services/plusi/model/ChipData;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
