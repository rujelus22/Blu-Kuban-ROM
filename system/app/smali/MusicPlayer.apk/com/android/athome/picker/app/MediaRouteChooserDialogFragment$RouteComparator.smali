.class Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteComparator;
.super Ljava/lang/Object;
.source "MediaRouteChooserDialogFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RouteComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteComparator;->this$0:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 626
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
