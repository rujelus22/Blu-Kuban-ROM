.class final Lcom/google/android/marvin/talkback/v;
.super Landroid/view/View$AccessibilityDelegate;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/PlayableListPreference;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/PlayableListPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/v;->a:Lcom/google/android/marvin/talkback/PlayableListPreference;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto :goto_3
.end method
