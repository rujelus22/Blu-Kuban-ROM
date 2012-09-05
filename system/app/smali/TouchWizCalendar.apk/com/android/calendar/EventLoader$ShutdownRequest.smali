.class Lcom/android/calendar/EventLoader$ShutdownRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/android/calendar/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutdownRequest"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/EventLoader$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/calendar/EventLoader$ShutdownRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public processRequest(Lcom/android/calendar/EventLoader;)V
    .registers 2
    .parameter "eventLoader"

    .prologue
    .line 50
    return-void
.end method

.method public skipRequest(Lcom/android/calendar/EventLoader;)V
    .registers 2
    .parameter "eventLoader"

    .prologue
    .line 53
    return-void
.end method
