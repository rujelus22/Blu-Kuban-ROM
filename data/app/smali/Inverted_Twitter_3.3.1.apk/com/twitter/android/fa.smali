.class final Lcom/twitter/android/fa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/SleepSettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SleepSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/fa;->a:Lcom/twitter/android/SleepSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/fa;->a:Lcom/twitter/android/SleepSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/SleepSettingsActivity;->a(Lcom/twitter/android/SleepSettingsActivity;)Lcom/twitter/android/api/af;

    move-result-object v0

    iput p2, v0, Lcom/twitter/android/api/af;->e:I

    iget-object v0, p0, Lcom/twitter/android/fa;->a:Lcom/twitter/android/SleepSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/SleepSettingsActivity;->a(Lcom/twitter/android/SleepSettingsActivity;)Lcom/twitter/android/api/af;

    move-result-object v0

    iput p3, v0, Lcom/twitter/android/api/af;->g:I

    iget-object v0, p0, Lcom/twitter/android/fa;->a:Lcom/twitter/android/SleepSettingsActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/twitter/android/SleepSettingsActivity;->a(Lcom/twitter/android/SleepSettingsActivity;Z)Z

    iget-object v0, p0, Lcom/twitter/android/fa;->a:Lcom/twitter/android/SleepSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/SleepSettingsActivity;->b(Lcom/twitter/android/SleepSettingsActivity;)Landroid/text/format/Time;

    move-result-object v0

    move v2, p3

    move v3, p2

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    iget-object v0, p0, Lcom/twitter/android/fa;->a:Lcom/twitter/android/SleepSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/SleepSettingsActivity;->e(Lcom/twitter/android/SleepSettingsActivity;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/fa;->a:Lcom/twitter/android/SleepSettingsActivity;

    invoke-static {v1}, Lcom/twitter/android/SleepSettingsActivity;->b(Lcom/twitter/android/SleepSettingsActivity;)Landroid/text/format/Time;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/fa;->a:Lcom/twitter/android/SleepSettingsActivity;

    invoke-static {v2}, Lcom/twitter/android/SleepSettingsActivity;->c(Lcom/twitter/android/SleepSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
