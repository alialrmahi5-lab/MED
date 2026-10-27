import 'package:flutter/material.dart';

void main() => runApp(const MedTermsApp());

const navy = Color(0xFF15324B);
const teal = Color(0xFF168A78);
const pale = Color(0xFFF2F7F7);
const coral = Color(0xFFE56C63);

class MedTermsApp extends StatelessWidget {
  const MedTermsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedTerms Quest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: teal),
        scaffoldBackgroundColor: pale,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: pale, foregroundColor: navy, elevation: 0,
          centerTitle: false,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class Term {
  final String en, ar, definition, breakdown, source;
  const Term(this.en, this.ar, this.definition, this.breakdown, this.source);
}

const terms = <Term>[
  Term('Tachycardia', 'تسرّع القلب',
      'A heart rate that is faster than expected. In adults, it commonly refers to a resting heart rate above 100 beats/min; interpret it in clinical context.',
      'tachy- = fast  +  cardi = heart  +  -ia = condition',
      'Open RN, Medical Terminology (2nd ed.), cardiovascular terminology; verify clinical definition against a current medical dictionary.'),
  Term('Bradycardia', 'بطء القلب',
      'A slower-than-expected heart rate; interpretation depends on age, context, and symptoms.',
      'brady- = slow  +  cardi = heart  +  -ia = condition',
      'Open RN, Medical Terminology (2nd ed.), cardiovascular terminology.'),
  Term('Cardiomegaly', 'تضخّم القلب',
      'Enlargement of the heart.',
      'cardi/o = heart  +  -megaly = enlargement',
      'Open RN, Medical Terminology (2nd ed.), foundational word parts.'),
  Term('Myalgia', 'ألم عضلي',
      'Pain in a muscle or muscles.',
      'my/o = muscle  +  -algia = pain',
      'Open RN, Medical Terminology (2nd ed.), foundational word parts.'),
  Term('Hepatitis', 'التهاب الكبد',
      'Inflammation of the liver.',
      'hepat = liver  +  -itis = inflammation',
      'Open RN, Medical Terminology (2nd ed.), foundational word parts.'),
  Term('Dyspnea', 'ضيق التنفس', 'Uncomfortable or difficult breathing.', 'dys- = difficult + -pnea = breathing', 'Open RN, Medical Terminology; educational summary.'),
  Term('Apnea', 'انقطاع التنفس', 'Temporary cessation of breathing.', 'a- = without + -pnea = breathing', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hypoxia', 'نقص الأكسجة', 'Insufficient oxygen availability at the tissue level.', 'hypo- = low + ox/o = oxygen + -ia = condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hypertension', 'ارتفاع ضغط الدم', 'Persistently elevated blood pressure.', 'hyper- = high + tens = pressure + -ion = process', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hypotension', 'انخفاض ضغط الدم', 'Blood pressure lower than expected in context.', 'hypo- = low + tens = pressure + -ion = process', 'Open RN, Medical Terminology; educational summary.'),
  Term('Arrhythmia', 'اضطراب نظم القلب', 'An abnormal heart rhythm.', 'a- = without/abnormal + rhythm + -ia = condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Ischemia', 'نقص التروية', 'Inadequate blood supply to a tissue.', 'isch = to hold back + -emia = blood condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Infarction', 'احتشاء', 'Tissue death due to inadequate blood supply.', 'infarct = area of tissue death + -ion = process', 'Open RN, Medical Terminology; educational summary.'),
  Term('Edema', 'وذمة', 'Swelling caused by excess fluid in tissues.', 'edema = swelling', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hemorrhage', 'نزف', 'Escape of blood from damaged blood vessels.', 'hem/o = blood + -rrhage = bursting forth', 'Open RN, Medical Terminology; educational summary.'),
  Term('Anemia', 'فقر الدم', 'A condition involving reduced red cells or hemoglobin.', 'an- = without/low + -emia = blood condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Leukocytosis', 'كثرة الكريات البيضاء', 'An increased white blood cell count.', 'leuk/o = white + cyt/o = cell + -osis = condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Thrombocytopenia', 'قلة الصفيحات الدموية', 'A lower-than-normal platelet count.', 'thromb/o = clot + cyt/o = cell + -penia = deficiency', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hematuria', 'بيلة دموية', 'Blood present in urine.', 'hemat/o = blood + -uria = urine condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Proteinuria', 'بيلة بروتينية', 'Protein present in urine.', 'protein + -uria = urine condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Dysuria', 'عسر التبول', 'Painful or difficult urination.', 'dys- = painful/difficult + -uria = urination', 'Open RN, Medical Terminology; educational summary.'),
  Term('Polyuria', 'كثرة التبول', 'Production of an unusually large volume of urine.', 'poly- = many/much + -uria = urine', 'Open RN, Medical Terminology; educational summary.'),
  Term('Oliguria', 'قلة البول', 'Low urine output.', 'olig/o = few/little + -uria = urine', 'Open RN, Medical Terminology; educational summary.'),
  Term('Nephritis', 'التهاب الكلية', 'Inflammation of a kidney.', 'nephr/o = kidney + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Nephrolithiasis', 'حصى الكلى', 'Formation or presence of kidney stones.', 'nephr/o = kidney + lith = stone + -iasis = condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Gastritis', 'التهاب المعدة', 'Inflammation of the stomach lining.', 'gastr/o = stomach + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Gastroenteritis', 'التهاب المعدة والأمعاء', 'Inflammation of the stomach and intestines.', 'gastr/o = stomach + enter/o = intestine + -itis', 'Open RN, Medical Terminology; educational summary.'),
  Term('Dysphagia', 'عسر البلع', 'Difficulty swallowing.', 'dys- = difficult + -phagia = swallowing/eating', 'Open RN, Medical Terminology; educational summary.'),
  Term('Nausea', 'غثيان', 'A sensation of needing to vomit.', 'nausea = feeling of sickness', 'Open RN, Medical Terminology; educational summary.'),
  Term('Emesis', 'قيء', 'The act of vomiting.', 'emesis = vomiting', 'Open RN, Medical Terminology; educational summary.'),
  Term('Diarrhea', 'إسهال', 'Frequent loose or watery stools.', 'diarrhea = loose flow', 'Open RN, Medical Terminology; educational summary.'),
  Term('Constipation', 'إمساك', 'Infrequent or difficult passage of stool.', 'constipate = bind/pack tightly', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hepatomegaly', 'تضخم الكبد', 'Enlargement of the liver.', 'hepat/o = liver + -megaly = enlargement', 'Open RN, Medical Terminology; educational summary.'),
  Term('Cholelithiasis', 'حصى المرارة', 'Stones in the gallbladder or biliary tract.', 'chole = bile + lith = stone + -iasis = condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Pancreatitis', 'التهاب البنكرياس', 'Inflammation of the pancreas.', 'pancreat/o = pancreas + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Dermatitis', 'التهاب الجلد', 'Inflammation of the skin.', 'dermat/o = skin + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Erythema', 'احمرار الجلد', 'Redness of the skin.', 'erythr/o = red + -ema = condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Pruritus', 'حكة', 'An itching sensation.', 'pruritus = itching', 'Open RN, Medical Terminology; educational summary.'),
  Term('Urticaria', 'شرى / أرتيكاريا', 'Raised itchy skin welts, often called hives.', 'urtica = nettle; urticaria = hive-like reaction', 'Open RN, Medical Terminology; educational summary.'),
  Term('Cellulitis', 'التهاب النسيج الخلوي', 'A bacterial infection involving deeper skin and soft tissue.', 'cellul/o = small cell + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Arthritis', 'التهاب المفاصل', 'Inflammation of one or more joints.', 'arthr/o = joint + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Arthralgia', 'ألم المفاصل', 'Pain in a joint.', 'arthr/o = joint + -algia = pain', 'Open RN, Medical Terminology; educational summary.'),
  Term('Osteoporosis', 'هشاشة العظام', 'A condition of reduced bone strength and increased fracture risk.', 'oste/o = bone + por/o = pore + -osis = condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Osteomyelitis', 'التهاب العظم والنقي', 'Infection and inflammation of bone and bone marrow.', 'oste/o = bone + myel/o = marrow + -itis', 'Open RN, Medical Terminology; educational summary.'),
  Term('Myopathy', 'اعتلال عضلي', 'A disease affecting muscle tissue.', 'my/o = muscle + -pathy = disease', 'Open RN, Medical Terminology; educational summary.'),
  Term('Neuropathy', 'اعتلال الأعصاب', 'Damage or dysfunction affecting nerves.', 'neur/o = nerve + -pathy = disease', 'Open RN, Medical Terminology; educational summary.'),
  Term('Neuralgia', 'ألم عصبي', 'Pain along the course of a nerve.', 'neur/o = nerve + -algia = pain', 'Open RN, Medical Terminology; educational summary.'),
  Term('Encephalitis', 'التهاب الدماغ', 'Inflammation of brain tissue.', 'encephal/o = brain + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Meningitis', 'التهاب السحايا', 'Inflammation of the membranes around the brain and spinal cord.', 'mening/o = meninges + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Seizure', 'نوبة اختلاج', 'A sudden episode of abnormal electrical activity in the brain.', 'clinical term: seizure', 'Open RN, Medical Terminology; educational summary.'),
  Term('Syncope', 'إغماء', 'Temporary loss of consciousness due to reduced blood flow to the brain.', 'syn- = together + koptein = cut off', 'Open RN, Medical Terminology; educational summary.'),
  Term('Vertigo', 'دوار', 'A sensation that you or your surroundings are moving or spinning.', 'vertigo = spinning sensation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Diplopia', 'ازدواج الرؤية', 'Seeing two images of a single object.', 'dipl/o = double + -opia = vision', 'Open RN, Medical Terminology; educational summary.'),
  Term('Myopia', 'قصر النظر', 'Difficulty seeing distant objects clearly.', 'my/o = close + -opia = vision', 'Open RN, Medical Terminology; educational summary.'),
  Term('Conjunctivitis', 'التهاب الملتحمة', 'Inflammation of the membrane covering the front of the eye.', 'conjunctiv/o = conjunctiva + -itis', 'Open RN, Medical Terminology; educational summary.'),
  Term('Otitis', 'التهاب الأذن', 'Inflammation of the ear.', 'ot/o = ear + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Rhinitis', 'التهاب الأنف', 'Inflammation of the nasal lining.', 'rhin/o = nose + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Sinusitis', 'التهاب الجيوب الأنفية', 'Inflammation of the paranasal sinuses.', 'sinus = cavity + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Pharyngitis', 'التهاب البلعوم', 'Inflammation of the pharynx.', 'pharyng/o = pharynx + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Laryngitis', 'التهاب الحنجرة', 'Inflammation of the larynx.', 'laryng/o = larynx + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Pneumonia', 'ذات الرئة', 'An infection that inflames air sacs in one or both lungs.', 'pneumon/o = lung', 'Open RN, Medical Terminology; educational summary.'),
  Term('Bronchitis', 'التهاب القصبات', 'Inflammation of the bronchial tubes.', 'bronch/o = bronchus + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Asthma', 'الربو', 'A condition in which airways become inflamed and narrowed intermittently.', 'asthma = breathlessness', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hemoptysis', 'نفث الدم', 'Coughing up blood from the respiratory tract.', 'hem/o = blood + -ptysis = spitting', 'Open RN, Medical Terminology; educational summary.'),
  Term('Pleuritis', 'التهاب الجنبة', 'Inflammation of the membrane surrounding the lungs.', 'pleur/o = pleura + -itis = inflammation', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hyperglycemia', 'ارتفاع سكر الدم', 'A blood glucose level above the expected range.', 'hyper- = high + glyc/o = sugar + -emia = blood condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hypoglycemia', 'انخفاض سكر الدم', 'A blood glucose level below the expected range.', 'hypo- = low + glyc/o = sugar + -emia = blood condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Diabetes mellitus', 'داء السكري', 'A group of disorders involving persistently elevated blood glucose.', 'diabetes mellitus = clinical disease name', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hyperthyroidism', 'فرط نشاط الغدة الدرقية', 'Excess thyroid hormone activity.', 'hyper- = excessive + thyroid + -ism = condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Hypothyroidism', 'قصور الغدة الدرقية', 'Insufficient thyroid hormone activity.', 'hypo- = low + thyroid + -ism = condition', 'Open RN, Medical Terminology; educational summary.'),
  Term('Endocrinology', 'علم الغدد الصماء', 'The study of hormones and endocrine glands.', 'endo- = within + crin/o = secrete + -logy = study', 'Open RN, Medical Terminology; educational summary.'),
  Term('Ovarian cyst', 'كيس المبيض', 'A fluid-filled sac in or on an ovary.', 'ovari/o = ovary + cyst = sac', 'Open RN, Medical Terminology; educational summary.'),
  Term('Amenorrhea', 'انقطاع الطمث', 'Absence of menstrual periods.', 'a- = without + men/o = month + -rrhea = flow', 'Open RN, Medical Terminology; educational summary.'),
  Term('Prenatal', 'قبل الولادة', 'Occurring before birth.', 'pre- = before + nat/o = birth', 'Open RN, Medical Terminology; educational summary.'),
  Term('Postpartum', 'ما بعد الولادة', 'The period after childbirth.', 'post- = after + partum = childbirth', 'Open RN, Medical Terminology; educational summary.'),
  Term('Carcinoma', 'سرطانة', 'A malignant tumor arising from epithelial cells.', 'carcin/o = cancer + -oma = tumor', 'Open RN, Medical Terminology; educational summary.'),
  Term('Benign', 'حميد', 'Not cancerous; does not invade nearby tissue or spread like a malignancy.', 'benign = non-malignant', 'Open RN, Medical Terminology; educational summary.'),
  Term('Malignant', 'خبيث', 'Cancerous and capable of invading or spreading.', 'malign = harmful; clinical descriptor', 'Open RN, Medical Terminology; educational summary.'),
  Term('Biopsy', 'خزعة', 'Removal of a tissue sample for examination.', 'bi/o = life + -opsy = viewing', 'Open RN, Medical Terminology; educational summary.'),
  Term('Metastasis', 'نقيلة / انتشار السرطان', 'Spread of cancer from its original site to another part of the body.', 'meta- = beyond + stasis = placement', 'Open RN, Medical Terminology; educational summary.'),
  Term('Benign tumor', 'ورم حميد', 'A non-cancerous growth.', 'benign = non-malignant + tumor = growth', 'Open RN, Medical Terminology; educational summary.'),
  Term('Sepsis', 'إنتان', 'Life-threatening organ dysfunction caused by a dysregulated response to infection.', 'sepsis = systemic response to infection (clinical concept)', 'Open RN, Medical Terminology; educational summary.'),
  Term('Aseptic', 'خالي من التلوث الميكروبي', 'Free from contamination by disease-causing microorganisms.', 'a- = without + septic = infection-related', 'Open RN, Medical Terminology; educational summary.'),
  Term('Antibiotic', 'مضاد حيوي', 'A medicine used to treat certain bacterial infections.', 'anti- = against + bi/o = life', 'Open RN, Medical Terminology; educational summary.'),
  Term('Analgesic', 'مسكن ألم', 'A medicine that relieves pain.', 'an- = without + alges/o = pain', 'Open RN, Medical Terminology; educational summary.'),
  Term('Antipyretic', 'خافض للحرارة', 'A medicine that reduces fever.', 'anti- = against + pyret/o = fever', 'Open RN, Medical Terminology; educational summary.'),
  Term('Antihistamine', 'مضاد هيستامين', 'A medicine that blocks histamine effects and may relieve allergy symptoms.', 'anti- = against + histamine', 'Open RN, Medical Terminology; educational summary.'),
  Term('Anticoagulant', 'مضاد تخثر', 'A medicine that reduces blood clot formation.', 'anti- = against + coagul/o = clotting', 'Open RN, Medical Terminology; educational summary.'),
  Term('Bronchodilator', 'موسع قصبي', 'A medicine that relaxes airway muscles and widens the airways.', 'bronch/o = airway + dilat/o = widen', 'Open RN, Medical Terminology; educational summary.'),
  Term('Diuretic', 'مدر للبول', 'A medicine that increases urine production.', 'diur/o = urination', 'Open RN, Medical Terminology; educational summary.'),
  Term('Insulin', 'إنسولين', 'A hormone used as medicine to help regulate blood glucose in certain patients.', 'insulin = hormone name', 'Open RN, Medical Terminology; educational summary.'),
  Term('Contraindication', 'مانع استعمال', 'A condition or factor that makes a treatment inadvisable.', 'contra- = against + indication = reason for use', 'Open RN, Medical Terminology; educational summary.'),
  Term('Side effect', 'أثر جانبي', 'An unintended effect that occurs in addition to a medicine’s intended effect.', 'clinical term: side effect', 'Open RN, Medical Terminology; educational summary.'),
  Term('Dosage', 'جرعة دوائية', 'The amount and schedule of a medicine to be taken or given.', 'dose + -age = amount/schedule', 'Open RN, Medical Terminology; educational summary.'),
  Term('Prescription', 'وصفة طبية', 'A clinician’s instruction for dispensing or using a medicine.', 'prescription = written clinical instruction', 'Open RN, Medical Terminology; educational summary.'),
  Term('Adverse reaction', 'تفاعل ضار', 'An unwanted harmful response to a medicine or treatment.', 'adverse = harmful + reaction = response', 'Open RN, Medical Terminology; educational summary.'),
  Term('Pharmacology', 'علم الأدوية', 'The study of medicines and their effects on living systems.', 'pharmac/o = drug + -logy = study', 'Open RN, Medical Terminology; educational summary.'),
  Term('Pharmacokinetics', 'حركية الدواء', 'How the body absorbs, distributes, metabolizes, and eliminates a medicine.', 'pharmaco- = drug + kinetics = movement', 'Open RN, Medical Terminology; educational summary.'),
  Term('Pharmacodynamics', 'ديناميكية الدواء', 'How a medicine affects the body.', 'pharmaco- = drug + dynamics = effects/activity', 'Open RN, Medical Terminology; educational summary.'),
  Term('Intravenous', 'داخل الوريد', 'Administered into a vein.', 'intra- = within + ven/o = vein', 'Open RN, Medical Terminology; educational summary.'),
  Term('Intramuscular', 'داخل العضل', 'Administered into a muscle.', 'intra- = within + muscul/o = muscle', 'Open RN, Medical Terminology; educational summary.'),
  Term('Subcutaneous', 'تحت الجلد', 'Situated or administered beneath the skin.', 'sub- = under + cutane/o = skin', 'Open RN, Medical Terminology; educational summary.'),
  Term('Oral route', 'طريق الإعطاء الفموي', 'Medicine taken by mouth.', 'oral = mouth-related', 'Open RN, Medical Terminology; educational summary.'),
  Term('Topical', 'موضعي', 'Applied to a particular body surface, such as skin.', 'top/o = place + -ical = pertaining to', 'Open RN, Medical Terminology; educational summary.'),
  Term('Electrocardiogram', 'تخطيط كهربائية القلب', 'A recording of the electrical activity of the heart.', 'electr/o = electricity + cardi/o = heart + -gram = record', 'Open RN, Medical Terminology; educational summary.'),
  Term('Radiography', 'التصوير الشعاعي', 'Imaging using X-rays.', 'radi/o = radiation + -graphy = recording/imaging', 'Open RN, Medical Terminology; educational summary.'),
  Term('Ultrasonography', 'التصوير بالموجات فوق الصوتية', 'Imaging using high-frequency sound waves.', 'ultra- = beyond + son/o = sound + -graphy = imaging', 'Open RN, Medical Terminology; educational summary.'),
  Term('Magnetic resonance imaging', 'التصوير بالرنين المغناطيسي', 'Imaging that uses magnetic fields and radio waves.', 'magnetic resonance + imaging', 'Open RN, Medical Terminology; educational summary.'),
  Term('Complete blood count', 'تعداد الدم الكامل', 'A blood test measuring cells and related parameters.', 'CBC = complete blood count', 'Open RN, Medical Terminology; educational summary.'),
  Term('Urinalysis', 'تحليل البول', 'Testing urine for physical, chemical, and microscopic features.', 'urin/o = urine + -analysis = examination', 'Open RN, Medical Terminology; educational summary.'),
  Term('Culture and sensitivity', 'زرع وتحسس الجراثيم', 'Testing to identify microbes and determine which medicines may work against them.', 'culture = grow microbes + sensitivity = response testing', 'Open RN, Medical Terminology; educational summary.'),
  Term('Inflammation', 'التهاب', 'A response of tissue to injury, irritation, or infection.', 'inflamm = ignite + -ation = process', 'Open RN, Medical Terminology; educational summary.'),
  Term('Infection', 'عدوى', 'Invasion and multiplication of microorganisms in the body.', 'infect = contaminate + -ion = process', 'Open RN, Medical Terminology; educational summary.'),
  Term('Chronic', 'مزمن', 'Persisting over a long period or recurring frequently.', 'chronic = long-lasting', 'Open RN, Medical Terminology; educational summary.'),
  Term('Acute', 'حاد', 'Having a rapid onset or short course; severity varies by context.', 'acute = sudden/short-term', 'Open RN, Medical Terminology; educational summary.'),
  Term('Prognosis', 'إنذار المرض', 'The expected course or outcome of a condition.', 'pro- = before + gnosis = knowledge', 'Open RN, Medical Terminology; educational summary.'),
  Term('Diagnosis', 'تشخيص', 'Identification of a disease or condition from evidence.', 'dia- = through + gnosis = knowledge', 'Open RN, Medical Terminology; educational summary.'),
  Term('Symptom', 'عَرَض', 'A change experienced and reported by a patient.', 'symptom = experienced sign of illness', 'Open RN, Medical Terminology; educational summary.'),
  Term('Sign', 'علامة سريرية', 'An objective finding observed or measured during assessment.', 'clinical term: sign', 'Open RN, Medical Terminology; educational summary.'),
  Term('Differential diagnosis', 'التشخيص التفريقي', 'A list of possible conditions considered to explain findings.', 'differentiate = distinguish between possibilities', 'Open RN, Medical Terminology; educational summary.'),
  Term('Paracetamol (Acetaminophen)', 'باراسيتامول', 'A pain reliever and fever reducer. Excess doses can cause serious liver injury; follow the product label and professional advice.', 'medicine name: paracetamol / acetaminophen', 'Educational medicine summary; verify local product information.'),
  Term('Ibuprofen', 'إيبوبروفين', 'A non-steroidal anti-inflammatory medicine used for pain, fever, and inflammation. It may be unsuitable with some stomach, kidney, heart, or pregnancy-related risks.', 'NSAID = non-steroidal anti-inflammatory drug', 'Educational medicine summary; verify local product information.'),
  Term('Amoxicillin', 'أموكسيسيلين', 'A penicillin-family antibiotic used for selected bacterial infections when prescribed. It does not treat viral colds or flu.', 'antibiotic: penicillin family', 'Educational medicine summary; antibiotic use requires clinical assessment.'),
  Term('Azithromycin', 'أزيثروميسين', 'A macrolide antibiotic used for certain bacterial infections when clinically indicated.', 'antibiotic: macrolide family', 'Educational medicine summary; antibiotic use requires clinical assessment.'),
  Term('Metformin', 'ميتفورمين', 'A medicine commonly used to help manage type 2 diabetes.', 'medicine class: biguanide', 'Educational medicine summary; verify local product information.'),
  Term('Omeprazole', 'أوميبرازول', 'A proton pump inhibitor that reduces stomach acid.', 'medicine class: proton pump inhibitor (PPI)', 'Educational medicine summary; verify local product information.'),
  Term('Cetirizine', 'سيتريزين', 'An antihistamine used to relieve symptoms of allergies; may cause drowsiness in some people.', 'medicine class: antihistamine', 'Educational medicine summary; verify local product information.'),
  Term('Loratadine', 'لوراتادين', 'An antihistamine used for allergic symptoms; usually less sedating than older antihistamines, though effects vary.', 'medicine class: antihistamine', 'Educational medicine summary; verify local product information.'),
  Term('Salbutamol (Albuterol)', 'سالبوتامول', 'A short-acting bronchodilator used for relief of bronchospasm in conditions such as asthma.', 'medicine class: short-acting beta-2 agonist', 'Educational medicine summary; inhaler use should follow clinician instructions.'),
  Term('Amlodipine', 'أملوديبين', 'A calcium-channel blocker used to treat high blood pressure and some forms of angina.', 'medicine class: calcium-channel blocker', 'Educational medicine summary; verify local product information.'),
  Term('Losartan', 'لوسارتان', 'An angiotensin II receptor blocker used for high blood pressure and selected other conditions.', 'medicine class: ARB', 'Educational medicine summary; pregnancy and kidney-related precautions require professional review.'),
  Term('Atorvastatin', 'أتورفاستاتين', 'A statin used to lower cholesterol and reduce cardiovascular risk in appropriate patients.', 'medicine class: statin', 'Educational medicine summary; verify local product information.'),
  Term('Aspirin', 'أسبرين', 'At different formulations and doses, aspirin may be used for pain/fever or prescribed as an antiplatelet medicine. It can increase bleeding risk.', 'medicine class: salicylate / antiplatelet at selected doses', 'Educational medicine summary; not suitable for everyone, including some children.'),
  Term('Oral rehydration salts (ORS)', 'أملاح الإماهة الفموية', 'A balanced glucose-electrolyte solution used to prevent or treat dehydration from fluid loss.', 'ORS = oral rehydration salts', 'Educational medicine summary; severe dehydration needs urgent assessment.'),
  Term('Ferrous sulfate', 'كبريتات الحديدوز', 'An iron preparation used to prevent or treat iron deficiency when indicated.', 'medicine class: iron supplement', 'Educational medicine summary; excess iron can be dangerous, especially for children.'),
  Term('Folic acid', 'حمض الفوليك', 'A form of vitamin B9 used for folate deficiency and in recommended pre-pregnancy/pregnancy supplementation.', 'vitamin B9', 'Educational medicine summary; individual needs vary.'),
  Term('Vitamin D', 'فيتامين د', 'A vitamin important for calcium absorption and bone health; supplements are used when appropriate.', 'fat-soluble vitamin', 'Educational medicine summary; avoid excessive supplementation.'),
  Term('Diclofenac', 'ديكلوفيناك', 'A non-steroidal anti-inflammatory medicine used for pain and inflammation; it can carry stomach, kidney, and cardiovascular risks.', 'medicine class: NSAID', 'Educational medicine summary; verify local product information.'),
  Term('Dexamethasone', 'ديكساميثازون', 'A corticosteroid used for selected inflammatory, allergic, and other conditions under medical direction.', 'medicine class: corticosteroid', 'Educational medicine summary; not for unsupervised use.'),
  Term('Prednisolone', 'بريدنيزولون', 'A corticosteroid used for selected inflammatory and immune-related conditions.', 'medicine class: corticosteroid', 'Educational medicine summary; stopping or changing treatment may require clinician guidance.'),
  Term('Insulin glargine', 'إنسولين غلارجين', 'A long-acting insulin used in diabetes management.', 'medicine class: long-acting insulin', 'Educational medicine summary; insulin errors can cause dangerous hypoglycemia.'),
  Term('Levothyroxine', 'ليفوثيروكسين', 'A thyroid hormone replacement medicine used for hypothyroidism.', 'medicine class: thyroid hormone replacement', 'Educational medicine summary; dose and monitoring are individualized.'),
  Term('Furosemide', 'فوروسيميد', 'A loop diuretic used for selected cases of fluid overload and other indications.', 'medicine class: loop diuretic', 'Educational medicine summary; electrolyte and kidney monitoring may be needed.'),
  Term('Ceftriaxone', 'سيفترياكسون', 'A cephalosporin antibiotic used for selected bacterial infections, generally administered by a healthcare professional.', 'antibiotic: third-generation cephalosporin', 'Educational medicine summary; antibiotic use requires clinical assessment.'),
  Term('Metronidazole', 'ميترونيدازول', 'An antimicrobial medicine used for selected anaerobic bacterial and protozoal infections.', 'medicine class: nitroimidazole antimicrobial', 'Educational medicine summary; check interactions and local product instructions.'),
  Term('Fluconazole', 'فلوكونازول', 'An antifungal medicine used for selected fungal infections.', 'medicine class: azole antifungal', 'Educational medicine summary; interactions and liver-related precautions may apply.'),
  Term('Loperamide', 'لوبيراميد', 'A medicine that can reduce diarrhea in selected adults; it is not appropriate in some infections or when warning signs are present.', 'medicine class: antimotility agent', 'Educational medicine summary; blood in stool, high fever, or dehydration needs medical advice.'),
  Term('Ondansetron', 'أوندانسيترون', 'A medicine used to prevent or treat nausea and vomiting in selected situations.', 'medicine class: 5-HT3 receptor antagonist', 'Educational medicine summary; clinical precautions and interactions may apply.'),
  Term('Nitroglycerin', 'نيتروغليسرين', 'A nitrate medicine used for relief or prevention of angina under prescribed instructions.', 'medicine class: nitrate vasodilator', 'Educational medicine summary; can cause low blood pressure and dangerous interactions.'),
  Term('Clopidogrel', 'كلوبيدوغريل', 'An antiplatelet medicine used to reduce clot-related events in selected patients.', 'medicine class: P2Y12 platelet inhibitor', 'Educational medicine summary; increases bleeding risk and should be used as prescribed.'),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int xp = 0;
  int hearts = 5;
  int completed = 0;
  final Set<String> mastered = {};

  void lessonDone(int earned, String term) {
    setState(() {
      xp += earned;
      completed += 1;
      mastered.add(term);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MedTerms Quest', style: TextStyle(fontWeight: FontWeight.w800)),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16),
              child: Row(children: [
                const Icon(Icons.favorite, color: coral),
                const SizedBox(width: 4),
                Text('$hearts', style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 14),
                const Icon(Icons.bolt, color: Color(0xFFE8A928)),
                Text('$xp XP', style: const TextStyle(fontWeight: FontWeight.bold)),
              ]),
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(18),
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [navy, Color(0xFF276B72)]),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('رحلتك الطبية تبدأ هنا', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('تعلّم المصطلحات الطبية خطوة بخطوة\nLearn medical terminology, one lesson at a time.',
                    style: TextStyle(color: Colors.white, height: 1.6)),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Row(children: [
              Expanded(child: _StatCard(label: 'الدروس المكتملة', value: '$completed', icon: Icons.school)),
              const SizedBox(width: 10),
              Expanded(child: _StatCard(label: 'مصطلحات راجعتها', value: '${mastered.length}', icon: Icons.replay_circle_filled)),
            ]),
            const SizedBox(height: 24),
            const Text('مسارك التعليمي', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800, color: navy)),
            const SizedBox(height: 12),
            ...terms.asMap().entries.map((entry) => _UnitCard(
              number: (entry.key + 1).toString().padLeft(2, '0'),
              title: entry.value.ar,
              subtitle: entry.value.en,
              status: 'ابدأ الدرس',
              color: [teal, coral, const Color(0xFF9873C5), const Color(0xFF3D82A8)][entry.key % 4],
              onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (_) => LessonScreen(term: entry.value, onDone: lessonDone))),
            )),
            const SizedBox(height: 18),
            const Text('مراجعة سريعة', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: navy)),
            const SizedBox(height: 8),
            ...terms.take(10).map((t) => Card(
              elevation: 0,
              child: ListTile(
                leading: CircleAvatar(backgroundColor: teal.withOpacity(.12), child: const Icon(Icons.medical_information, color: teal)),
                title: Text(t.en, textDirection: TextDirection.ltr, textAlign: TextAlign.right, style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(t.ar),
                trailing: const Icon(Icons.chevron_left),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LessonScreen(term: t, onDone: lessonDone))),
              ),
            )),
            const SizedBox(height: 18),
            const Text('المصادر وسياسة الدقة', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 6),
            const Text(
              'المحتوى التجريبي يستند إلى Open RN, Medical Terminology (2nd edition), المرخّص وفق CC BY 4.0. هذه نسخة تعليمية أولية؛ يجب التحقق من التعريفات السريرية ومراجعتها من مختص قبل النشر.',
              style: TextStyle(height: 1.6, color: Colors.black87),
            ),
            const SizedBox(height: 6),
            const SelectableText('https://www.ncbi.nlm.nih.gov/books/NBK607454/'),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: 0,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.route), label: 'المسار'),
            NavigationDestination(icon: Icon(Icons.style), label: 'البطاقات'),
            NavigationDestination(icon: Icon(Icons.person), label: 'ملفي'),
          ],
          onDestinationSelected: (i) {
            if (i != 0) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('هذه الصفحة ضمن خطة التطوير التالية.')),
              );
            }
          },
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label, value;
  final IconData icon;
  const _StatCard({required this.label, required this.value, required this.icon});
  @override
  Widget build(BuildContext context) => Card(
    elevation: 0,
    child: Padding(
      padding: const EdgeInsets.all(14),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(icon, color: teal),
        const SizedBox(height: 10),
        Text(value, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: navy)),
        Text(label, style: const TextStyle(fontSize: 12)),
      ]),
    ),
  );
}

class _UnitCard extends StatelessWidget {
  final String number, title, subtitle, status;
  final Color color;
  final VoidCallback onTap;
  const _UnitCard({required this.number, required this.title, required this.subtitle, required this.status, required this.color, required this.onTap});
  @override
  Widget build(BuildContext context) => Card(
    elevation: 0,
    margin: const EdgeInsets.only(bottom: 10),
    child: InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(children: [
          Container(width: 48, height: 48, alignment: Alignment.center,
            decoration: BoxDecoration(color: color.withOpacity(.13), borderRadius: BorderRadius.circular(15)),
            child: Text(number, style: TextStyle(color: color, fontWeight: FontWeight.w900, fontSize: 18))),
          const SizedBox(width: 12),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 4),
            Text(subtitle, textDirection: TextDirection.ltr, textAlign: TextAlign.right, style: const TextStyle(color: Colors.black54, fontSize: 12)),
          ])),
          const SizedBox(width: 6),
          const Icon(Icons.chevron_left),
        ]),
      ),
    ),
  );
}

class LessonScreen extends StatefulWidget {
  final Term term;
  final void Function(int, String) onDone;
  const LessonScreen({super.key, required this.term, required this.onDone});
  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  int step = 0;
  int correct = 0;
  int? selected;
  bool checked = false;
  final TextEditingController typing = TextEditingController();
  late final List<String> options = _makeOptions();

  List<String> _makeOptions() {
    final distractors = terms.map((term) => term.ar)
        .where((meaning) => meaning != widget.term.ar).toSet().toList()..shuffle();
    return <String>[widget.term.ar, ...distractors.take(3)]..shuffle();
  }

  @override
  void dispose() {
    typing.dispose();
    super.dispose();
  }

  void checkAnswer(bool isCorrect) {
    setState(() {
      checked = true;
      if (isCorrect) correct++;
    });
  }

  void next() {
    if (step >= 4) {
      widget.onDone(correct * 10 + 15, widget.term.en);
      showDialog<void>(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('أحسنت! Lesson complete'),
          content: Text('نتيجتك: $correct / 5\nحصلت على ${correct * 10 + 15} XP.\nسيُضاف المصطلح إلى سجل المراجعة في النسخة القادمة.'),
          actions: [TextButton(onPressed: () { Navigator.pop(context); Navigator.pop(context); }, child: const Text('متابعة'))],
        ),
      );
      return;
    }
    setState(() { step++; selected = null; checked = false; typing.clear(); });
  }

  @override
  Widget build(BuildContext context) {
    final t = widget.term;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('درس تفاعلي'),
          leading: IconButton(icon: const Icon(Icons.close), onPressed: () => Navigator.pop(context)),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              Expanded(child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: LinearProgressIndicator(value: (step + 1) / 5, minHeight: 8, color: teal, backgroundColor: Colors.black12),
              )),
              const SizedBox(width: 12),
              Text('${step + 1}/5', style: const TextStyle(fontWeight: FontWeight.bold)),
            ]),
          ),
          Expanded(child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Text(['تعرّف على المصطلح', 'اختر المعنى الصحيح', 'حلّل أجزاء الكلمة', 'أكمل الجملة', 'اكتب المصطلح'][step],
                style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w800, color: navy)),
              const SizedBox(height: 20),
              if (step == 0) ...[
                Container(padding: const EdgeInsets.all(22), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22)),
                  child: Column(children: [
                    const Icon(Icons.favorite, size: 48, color: coral),
                    const SizedBox(height: 12),
                    Text(t.en, textDirection: TextDirection.ltr, style: const TextStyle(fontSize: 29, fontWeight: FontWeight.w900, color: navy)),
                    const SizedBox(height: 8),
                    Text(t.ar, style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 14),
                    Text(t.definition, textAlign: TextAlign.center, style: const TextStyle(height: 1.5)),
                  ]),
                ),
                const SizedBox(height: 16),
                _InfoBox(title: 'تحليل الكلمة · Word parts', body: t.breakdown),
                const SizedBox(height: 12),
                _InfoBox(title: 'المصدر العلمي', body: t.source),
              ] else if (step == 1) ...[
                Text('ما معنى ${t.en}؟', textDirection: TextDirection.ltr, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                ...List.generate(options.length, (i) => _OptionTile(
                  label: options[i], selected: selected == i, correct: checked && options[i] == t.ar,
                  onTap: checked ? null : () => setState(() => selected = i),
                )),
                if (checked) _Feedback(correct: options[selected ?? 0] == t.ar, explanation: 'المعنى المرجعي في هذه البطاقة: ${t.ar}.'),
              ] else if (step == 2) ...[
                _InfoBox(title: 'بناء الكلمة', body: t.breakdown),
                const SizedBox(height: 14),
                const Text('اختر الترتيب الصحيح للمصطلح:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                ...[
                  'suffix + root + prefix',
                  'prefix / root / suffix (عند انطباقها)',
                  'اختيار عشوائي للأجزاء',
                ].asMap().entries.map((e) => _OptionTile(
                  label: e.value, selected: selected == e.key, correct: checked && e.key == 1,
                  onTap: checked ? null : () => setState(() => selected = e.key),
                )),
                if (checked) _Feedback(correct: selected == 1, explanation: 'حلّل كل مصطلح وفق أجزائه الفعلية؛ ليست كل الكلمات تحتوي على Prefix وRoot وSuffix جميعاً.'),
              ] else if (step == 3) ...[
                const Text('The medical term is shown above. Select its Arabic meaning:', style: TextStyle(height: 1.5)),
                const SizedBox(height: 12),
                ...options.take(3).map((o) => _OptionTile(label: o, selected: selected != null && options[selected!] == o,
                  correct: checked && o == t.ar, onTap: checked ? null : () => setState(() => selected = options.indexOf(o)))),
                if (checked) _Feedback(correct: selected != null && options[selected!] == t.ar, explanation: 'اربط المصطلح بالسياق، ولا تستخدم المثال للتشخيص الطبي.'),
              ] else ...[
                Text('اكتب المصطلح الإنجليزي الذي يعني: ${t.ar}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 12),
                TextField(controller: typing, textDirection: TextDirection.ltr,
                  decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Type the medical term')),
                const SizedBox(height: 10),
                if (checked) _Feedback(correct: typing.text.trim().toLowerCase() == t.en.toLowerCase(), explanation: 'الإجابة القياسية: ${t.en}'),
              ],
            ],
          )),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
            decoration: const BoxDecoration(color: Colors.white, border: Border(top: BorderSide(color: Color(0xFFE2E8E8)))),
            child: SizedBox(width: double.infinity, height: 52, child: FilledButton(
              style: FilledButton.styleFrom(backgroundColor: teal, foregroundColor: Colors.white),
              onPressed: () {
                if (!checked && step > 0) {
                  if (step == 1) checkAnswer(selected != null && options[selected!] == t.ar);
                  else if (step == 2) checkAnswer(selected == 1);
                  else if (step == 3) checkAnswer(selected != null && options[selected!] == t.ar);
                  else checkAnswer(typing.text.trim().toLowerCase() == t.en.toLowerCase());
                } else {
                  next();
                }
              },
              child: Text(step == 0 ? 'ابدأ التمرين' : (!checked ? 'تحقّق من الإجابة' : (step == 4 ? 'إنهاء الدرس' : 'التالي')),
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            )),
          ),
        ]),
      ),
    );
  }
}

class _InfoBox extends StatelessWidget {
  final String title, body;
  const _InfoBox({required this.title, required this.body});
  @override
  Widget build(BuildContext context) => Container(
    width: double.infinity, padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: navy)),
      const SizedBox(height: 6),
      Text(body, style: const TextStyle(height: 1.5)),
    ]),
  );
}

class _OptionTile extends StatelessWidget {
  final String label;
  final bool selected, correct;
  final VoidCallback? onTap;
  const _OptionTile({required this.label, required this.selected, required this.correct, required this.onTap});
  @override
  Widget build(BuildContext context) {
    Color border = selected ? teal : const Color(0xFFD9E2E2);
    if (correct) border = teal;
    return Card(
      elevation: 0,
      color: selected ? teal.withOpacity(.08) : Colors.white,
      margin: const EdgeInsets.only(bottom: 9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14), side: BorderSide(color: border, width: selected || correct ? 2 : 1)),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(children: [
            Expanded(child: Text(label, style: const TextStyle(fontSize: 16))),
            if (selected) Icon(correct ? Icons.check_circle : Icons.radio_button_checked, color: teal),
          ]),
        ),
      ),
    );
  }
}

class _Feedback extends StatelessWidget {
  final bool correct;
  final String explanation;
  const _Feedback({required this.correct, required this.explanation});
  @override
  Widget build(BuildContext context) => Container(
    margin: const EdgeInsets.only(top: 10), padding: const EdgeInsets.all(13),
    decoration: BoxDecoration(color: correct ? const Color(0xFFE1F4EA) : const Color(0xFFFFE9E7), borderRadius: BorderRadius.circular(14)),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(correct ? Icons.check_circle : Icons.info, color: correct ? teal : coral),
      const SizedBox(width: 8),
      Expanded(child: Text(explanation, style: const TextStyle(height: 1.4))),
    ]),
  );
}
