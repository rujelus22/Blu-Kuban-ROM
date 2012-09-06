.class Lcom/google/googlenav/ui/view/android/aT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/util/Linkify$TransformFilter;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aS;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aT;->b:Lcom/google/googlenav/ui/view/android/aS;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aT;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aT;->a:Ljava/lang/String;

    return-object v0
.end method
