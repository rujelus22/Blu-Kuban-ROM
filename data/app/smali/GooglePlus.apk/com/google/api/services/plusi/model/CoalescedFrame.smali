.class public final Lcom/google/api/services/plusi/model/CoalescedFrame;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "CoalescedFrame.java"


# instance fields
.field public firstTimeMillis:Ljava/lang/Long;

.field public lastTimeMillis:Ljava/lang/Long;

.field public person:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/EmbedsPerson;",
            ">;"
        }
    .end annotation
.end field

.field public totalPersons:Ljava/lang/Integer;

.field public verbType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
