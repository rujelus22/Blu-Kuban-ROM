.class public Lcom/sprint/smps/activities/SignupAbstract;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "SignupAbstract.java"


# static fields
.field public static entryValues:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sprint/smps/activities/SignupAbstract;->entryValues:Ljava/util/Hashtable;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    return-void
.end method
