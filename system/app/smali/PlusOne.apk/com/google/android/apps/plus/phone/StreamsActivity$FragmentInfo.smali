.class Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
.super Ljava/lang/Object;
.source "StreamsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/StreamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentInfo"
.end annotation


# instance fields
.field public final index:I

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "index"
    .parameter "title"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    .line 75
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->title:Ljava/lang/String;

    .line 76
    return-void
.end method
