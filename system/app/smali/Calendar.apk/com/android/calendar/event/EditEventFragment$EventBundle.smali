.class Lcom/android/calendar/event/EditEventFragment$EventBundle;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventBundle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field end:J

.field id:J

.field start:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-wide v0, p0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    .line 848
    iput-wide v0, p0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->start:J

    .line 849
    iput-wide v0, p0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->end:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/EditEventFragment$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment$EventBundle;-><init>()V

    return-void
.end method
